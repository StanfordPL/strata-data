  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vmulsd %xmm1, %xmm1, %xmm14        #  1     0     4      OPC=vmulsd_xmm_xmm_xmm       
  vpunpckhqdq %xmm14, %xmm1, %xmm10  #  2     0x4   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movhlps %xmm10, %xmm1              #  3     0x9   4      OPC=movhlps_xmm_xmm          
  movapd %xmm1, %xmm4                #  4     0xd   4      OPC=movapd_xmm_xmm           
  vmovq %xmm4, %rbx                  #  5     0x11  5      OPC=vmovq_r64_xmm            
  retq                               #  6     0x16  1      OPC=retq                     
                                                                                        
.size target, .-target
