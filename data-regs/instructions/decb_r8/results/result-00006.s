  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movzbq %bl, %r11                  #  1     0     4      OPC=movzbq_r64_r8   
  movq $0xffffffffffffffff, %r10    #  2     0x4   10     OPC=movq_r64_imm64  
  callq .move_064_128_r10_r11_xmm1  #  3     0xe   5      OPC=callq_label     
  movsbl %bl, %ebx                  #  4     0x13  3      OPC=movsbl_r32_r8   
  callq .move_128_064_xmm1_r8_r9    #  5     0x16  5      OPC=callq_label     
  rolw $0x1, %r9w                   #  6     0x1b  4      OPC=rolw_r16_one    
  adcb %r8b, %bl                    #  7     0x1f  3      OPC=adcb_r8_r8      
  retq                              #  8     0x22  1      OPC=retq            
                                                                              
.size target, .-target
