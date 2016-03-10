  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  decw %bx                        #  1     0     3      OPC=decw_r16        
  movq $0xffffffffffffffff, %r15  #  2     0x3   10     OPC=movq_r64_imm64  
  notw %bx                        #  3     0xd   3      OPC=notw_r16        
  addw %bx, %r15w                 #  4     0x10  4      OPC=addw_r16_r16    
  incw %r15w                      #  5     0x14  4      OPC=incw_r16        
  retq                            #  6     0x18  1      OPC=retq            
                                                                            
.size target, .-target
