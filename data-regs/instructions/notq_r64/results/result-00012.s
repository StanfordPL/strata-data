  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq %rbx, %rdx                 #  1     0     3      OPC=movq_r64_r64    
  movq $0xfffffffffffffffd, %r12  #  2     0x3   10     OPC=movq_r64_imm64  
  xorq %r12, %rbx                 #  3     0xd   3      OPC=xorq_r64_r64    
  notw %dx                        #  4     0x10  3      OPC=notw_r16        
  movw %dx, %bx                   #  5     0x13  3      OPC=movw_r16_r16    
  retq                            #  6     0x16  1      OPC=retq            
                                                                            
.size target, .-target
