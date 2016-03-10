  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  callq .move_016_008_bx_r8b_r9b      #  1     0     5      OPC=callq_label           
  vpbroadcastw %xmm2, %xmm7           #  2     0x5   5      OPC=vpbroadcastw_xmm_xmm  
  vcvtpd2ps %xmm7, %xmm9              #  3     0xa   4      OPC=vcvtpd2ps_xmm_xmm     
  vmovsd %xmm9, %xmm9, %xmm1          #  4     0xe   5      OPC=vmovsd_xmm_xmm_xmm    
  movaps %xmm2, %xmm1                 #  5     0x13  3      OPC=movaps_xmm_xmm        
  callq .move_r9b_to_byte_15_of_ymm1  #  6     0x16  5      OPC=callq_label           
  callq .move_r8b_to_byte_14_of_ymm1  #  7     0x1b  5      OPC=callq_label           
  retq                                #  8     0x20  1      OPC=retq                  
                                                                                      
.size target, .-target
