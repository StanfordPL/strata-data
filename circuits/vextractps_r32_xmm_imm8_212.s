  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movd %xmm1, %eax                #  1     0     4      OPC=movd_r32_xmm    
  movq $0xfffffffffffffffe, %rbx  #  2     0x4   10     OPC=movq_r64_imm64  
  negb %bl                        #  3     0xe   2      OPC=negb_r8         
  xchgl %eax, %ebx                #  4     0x10  2      OPC=xchgl_r32_r32   
  retq                            #  5     0x12  1      OPC=retq            
                                                                            
.size target, .-target
