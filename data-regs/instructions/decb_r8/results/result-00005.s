  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  xorq %rax, %rax                 #  1     0     3      OPC=xorq_r64_r64    
  movq $0xffffffffffffffff, %rbp  #  2     0x3   10     OPC=movq_r64_imm64  
  adcb %bl, %bpl                  #  3     0xd   3      OPC=adcb_r8_r8      
  callq .read_zf_into_rbx         #  4     0x10  5      OPC=callq_label     
  xchgl %ebp, %ebx                #  5     0x15  2      OPC=xchgl_r32_r32   
  retq                            #  6     0x17  1      OPC=retq            
                                                                            
.size target, .-target
