  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                 
.target:                             #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label        
  xorps %xmm8, %xmm1                 #  2     0x5   4      OPC=xorps_xmm_xmm      
  vpmovzxwd %xmm1, %xmm10            #  3     0x9   5      OPC=vpmovzxwd_xmm_xmm  
  movlhps %xmm10, %xmm1              #  4     0xe   4      OPC=movlhps_xmm_xmm    
  retq                               #  5     0x12  1      OPC=retq               
                                                                                  
.size target, .-target
