  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  setl %bl                        #  1     0     3      OPC=setl_r8         
  movq $0xffffffffffffffff, %rax  #  2     0x3   10     OPC=movq_r64_imm64  
  incw %ax                        #  3     0xd   3      OPC=incw_r16        
  addb %ah, %bl                   #  4     0x10  2      OPC=addb_r8_rh      
  setbe %al                       #  5     0x12  3      OPC=setbe_r8        
  xchgb %ah, %al                  #  6     0x15  2      OPC=xchgb_r8_rh     
  retq                            #  7     0x17  1      OPC=retq            
                                                                            
.size target, .-target
