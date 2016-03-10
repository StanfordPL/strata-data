  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  movq $0xfffffffffffffffa, %r11                #  1     0     10     OPC=movq_r64_imm64   
  cmpb %r11b, %r11b                             #  2     0xa   3      OPC=cmpb_r8_r8       
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  3     0xd   5      OPC=callq_label      
  callq .move_128_064_xmm1_r8_r9                #  4     0x12  5      OPC=callq_label      
  callq .read_zf_into_rbx                       #  5     0x17  5      OPC=callq_label      
  cmovnaw %r8w, %bx                             #  6     0x1c  5      OPC=cmovnaw_r16_r16  
  cmovbew %r11w, %bx                            #  7     0x21  5      OPC=cmovbew_r16_r16  
  retq                                          #  8     0x26  1      OPC=retq             
                                                                                           
.size target, .-target
