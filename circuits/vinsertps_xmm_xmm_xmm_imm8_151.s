  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vunpckhps %xmm2, %xmm11, %xmm9       #  2     0x5   4      OPC=vunpckhps_xmm_xmm_xmm  
  xorps %xmm1, %xmm1                   #  3     0x9   3      OPC=xorps_xmm_xmm          
  vmovsd %xmm1, %xmm9, %xmm1           #  4     0xc   4      OPC=vmovsd_xmm_xmm_xmm     
  retq                                 #  5     0x10  1      OPC=retq                   
                                                                                        
.size target, .-target
