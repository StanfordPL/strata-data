  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode              
.target:                              #        0     0      OPC=<label>         
  movq $0x0, %rbx                     #  1     0     10     OPC=movq_r64_imm64  
  callq .move_byte_12_of_ymm1_to_r9b  #  2     0xa   5      OPC=callq_label     
  shll $0x1, %ebx                     #  3     0xf   2      OPC=shll_r32_one    
  shlw $0x1, %bx                      #  4     0x11  3      OPC=shlw_r16_one    
  xaddl %ebx, %ebx                    #  5     0x14  3      OPC=xaddl_r32_r32   
  adcb %r9b, %bl                      #  6     0x17  3      OPC=adcb_r8_r8      
  retq                                #  7     0x1a  1      OPC=retq            
                                                                                
.size target, .-target
