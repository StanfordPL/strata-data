  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                
.target:                              #        0     0      OPC=<label>           
  movapd %xmm1, %xmm11                #  1     0     5      OPC=movapd_xmm_xmm    
  movmskpd %xmm11, %ebp               #  2     0x5   5      OPC=movmskpd_r32_xmm  
  callq .move_byte_10_of_ymm1_to_r8b  #  3     0xa   5      OPC=callq_label       
  callq .move_byte_11_of_ymm1_to_r9b  #  4     0xf   5      OPC=callq_label       
  sarl $0x1, %ebp                     #  5     0x14  2      OPC=sarl_r32_one      
  callq .read_of_into_rbx             #  6     0x16  5      OPC=callq_label       
  callq .move_008_016_r8b_r9b_bx      #  7     0x1b  5      OPC=callq_label       
  retq                                #  8     0x20  1      OPC=retq              
                                                                                  
.size target, .-target
