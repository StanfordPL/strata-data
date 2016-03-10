  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  setnge %ch                      #  1     0     3      OPC=setnge_rh       
  movsbl %ch, %edx                #  2     0x3   3      OPC=movsbl_r32_rh   
  xorb %dl, %dh                   #  3     0x6   2      OPC=xorb_rh_r8      
  movq $0xfffffffffffffffc, %rax  #  4     0x8   10     OPC=movq_r64_imm64  
  xchgl %eax, %edx                #  5     0x12  1      OPC=xchgl_r32_eax   
  retq                            #  6     0x13  1      OPC=retq            
                                                                            
.size target, .-target
