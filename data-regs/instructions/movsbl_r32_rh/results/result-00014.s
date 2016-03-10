  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xfffffffffffffffc, %rbx  #  1     0     10     OPC=movq_r64_imm64  
  xchgb %ah, %bl                  #  2     0xa   2      OPC=xchgb_r8_rh     
  movsbq %bl, %r11                #  3     0xc   4      OPC=movsbq_r64_r8   
  xchgl %ebx, %r11d               #  4     0x10  3      OPC=xchgl_r32_r32   
  retq                            #  5     0x13  1      OPC=retq            
                                                                            
.size target, .-target
