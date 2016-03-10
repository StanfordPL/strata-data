  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  movq $0x10, %rbx                              #  1     0     10     OPC=movq_r64_imm64   
  shlb $0x1, %bl                                #  2     0xa   2      OPC=shlb_r8_one      
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  3     0xc   5      OPC=callq_label      
  rclb $0x1, %bh                                #  4     0x11  2      OPC=rclb_rh_one      
  cmovnew %r11w, %bx                            #  5     0x13  5      OPC=cmovnew_r16_r16  
  retq                                          #  6     0x18  1      OPC=retq             
                                                                                           
.size target, .-target
