  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vrsqrtps %xmm1, %xmm6            #  1     0     4      OPC=vrsqrtps_xmm_xmm         
  vunpckhpd %xmm1, %xmm6, %xmm8    #  2     0x4   4      OPC=vunpckhpd_xmm_xmm_xmm    
  vpunpckhqdq %xmm8, %xmm8, %xmm0  #  3     0x8   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovq %xmm0, %rbx                #  4     0xd   5      OPC=vmovq_r64_xmm            
  retq                             #  5     0x12  1      OPC=retq                     
                                                                                      
.size target, .-target
