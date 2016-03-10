  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                    
.target:                                    #        0     0      OPC=<label>               
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label           
  vbroadcastsd %xmm1, %ymm1                 #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm  
  callq .move_byte_31_of_ymm1_to_r9b        #  3     0xa   5      OPC=callq_label           
  sarl $0x1, %edx                           #  4     0xf   2      OPC=sarl_r32_one          
  callq .move_byte_30_of_ymm1_to_r8b        #  5     0x11  5      OPC=callq_label           
  callq .read_zf_into_rbx                   #  6     0x16  5      OPC=callq_label           
  callq .move_008_016_r8b_r9b_bx            #  7     0x1b  5      OPC=callq_label           
  retq                                      #  8     0x20  1      OPC=retq                  
                                                                                            
.size target, .-target
