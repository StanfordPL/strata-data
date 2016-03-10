  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  vmovupd %xmm2, %xmm1                 #  1     0     4      OPC=vmovupd_xmm_xmm    
  callq .move_128_64_xmm2_xmm12_xmm13  #  2     0x4   5      OPC=callq_label        
  vmovshdup %xmm13, %xmm10             #  3     0x9   5      OPC=vmovshdup_xmm_xmm  
  movups %xmm10, %xmm12                #  4     0xe   4      OPC=movups_xmm_xmm     
  callq .move_64_128_xmm12_xmm13_xmm1  #  5     0x12  5      OPC=callq_label        
  retq                                 #  6     0x17  1      OPC=retq               
                                                                                    
.size target, .-target
