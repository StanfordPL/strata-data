  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovq %rbx, %xmm1                 #  1     0     5      OPC=vmovq_xmm_r64            
  movaps %xmm2, %xmm3               #  2     0x5   3      OPC=movaps_xmm_xmm           
  vaddsd %xmm1, %xmm2, %xmm5        #  3     0x8   4      OPC=vaddsd_xmm_xmm_xmm       
  vpunpckhqdq %xmm5, %xmm3, %xmm13  #  4     0xc   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movlhps %xmm13, %xmm1             #  5     0x10  4      OPC=movlhps_xmm_xmm          
  retq                              #  6     0x14  1      OPC=retq                     
                                                                                       
.size target, .-target
