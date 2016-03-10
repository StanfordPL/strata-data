  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label            
  vmovd %ebx, %xmm4                  #  2     0x5   4      OPC=vmovd_xmm_r32          
  vunpcklps %xmm4, %xmm9, %xmm10     #  3     0x9   4      OPC=vunpcklps_xmm_xmm_xmm  
  vmovddup %xmm10, %xmm2             #  4     0xd   5      OPC=vmovddup_xmm_xmm       
  movlhps %xmm2, %xmm1               #  5     0x12  3      OPC=movlhps_xmm_xmm        
  retq                               #  6     0x15  1      OPC=retq                   
                                                                                      
.size target, .-target
