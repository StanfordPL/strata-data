  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  callq .move_128_064_xmm2_r8_r9      #  1     0     5      OPC=callq_label      
  vzeroall                            #  2     0x5   3      OPC=vzeroall         
  shlb $0x1, %bh                      #  3     0x8   2      OPC=shlb_rh_one      
  orw %r9w, %r9w                      #  4     0xa   4      OPC=orw_r16_r16      
  callq .move_064_128_r8_r9_xmm1      #  5     0xe   5      OPC=callq_label      
  cmovael %ebx, %r9d                  #  6     0x13  4      OPC=cmovael_r32_r32  
  callq .move_r9b_to_byte_14_of_ymm1  #  7     0x17  5      OPC=callq_label      
  retq                                #  8     0x1c  1      OPC=retq             
                                                                                 
.size target, .-target
