  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                      
.target:                              #        0     0      OPC=<label>                 
  vpbroadcastd %xmm2, %ymm12          #  1     0     5      OPC=vpbroadcastd_ymm_xmm    
  callq .move_byte_1_of_ymm1_to_r9b   #  2     0x5   5      OPC=callq_label             
  callq .move_r9b_to_byte_15_of_ymm1  #  3     0xa   5      OPC=callq_label             
  vpunpckhdq %xmm12, %xmm1, %xmm15    #  4     0xf   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  movlhps %xmm15, %xmm1               #  5     0x14  4      OPC=movlhps_xmm_xmm         
  retq                                #  6     0x18  1      OPC=retq                    
                                                                                        
.size target, .-target
