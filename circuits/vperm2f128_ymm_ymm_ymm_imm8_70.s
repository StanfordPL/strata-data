  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                 
.target:                                #        0     0      OPC=<label>            
  vorps %xmm3, %xmm3, %xmm12            #  1     0     4      OPC=vorps_xmm_xmm_xmm  
  movups %xmm2, %xmm13                  #  2     0x4   4      OPC=movups_xmm_xmm     
  callq .move_128_256_xmm12_xmm13_ymm3  #  3     0x8   5      OPC=callq_label        
  vmovdqu %ymm3, %ymm1                  #  4     0xd   4      OPC=vmovdqu_ymm_ymm    
  retq                                  #  5     0x11  1      OPC=retq               
                                                                                     
.size target, .-target
