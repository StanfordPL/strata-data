  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movl %ebx, %edi                 #  1     0     2      OPC=movl_r32_r32    
  decw %di                        #  2     0x2   3      OPC=decw_r16        
  addq %rdi, %rdi                 #  3     0x5   3      OPC=addq_r64_r64    
  movq $0xffffffffffffffff, %r12  #  4     0x8   10     OPC=movq_r64_imm64  
  seto %r15b                      #  5     0x12  4      OPC=seto_r8         
  movslq %r12d, %rax              #  6     0x16  3      OPC=movslq_r64_r32  
  xorb %r15b, %al                 #  7     0x19  3      OPC=xorb_r8_r8      
  adcl %r12d, %ebx                #  8     0x1c  3      OPC=adcl_r32_r32    
  retq                            #  9     0x1f  1      OPC=retq            
                                                                            
.size target, .-target
