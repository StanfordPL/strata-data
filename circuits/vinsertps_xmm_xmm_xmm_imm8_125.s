  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  pmovzxwd %xmm3, %xmm9                #  1     0     6      OPC=pmovzxwd_xmm_xmm       
  vminsd %xmm9, %xmm9, %xmm1           #  2     0x6   5      OPC=vminsd_xmm_xmm_xmm     
  callq .move_256_128_ymm1_xmm8_xmm9   #  3     0xb   5      OPC=callq_label            
  callq .move_128_64_xmm2_xmm12_xmm13  #  4     0x10  5      OPC=callq_label            
  vcvtsd2ss %xmm8, %xmm12, %xmm1       #  5     0x15  5      OPC=vcvtsd2ss_xmm_xmm_xmm  
  retq                                 #  6     0x1a  1      OPC=retq                   
                                                                                        
.size target, .-target
