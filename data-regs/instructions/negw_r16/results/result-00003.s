  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movswl %bx, %edx                #  1     0     3      OPC=movswl_r32_r16  
  movq $0xffffffffffffffff, %r13  #  2     0x3   10     OPC=movq_r64_imm64  
  xorw %r13w, %bx                 #  3     0xd   4      OPC=xorw_r16_r16    
  adcq %r13, %rdx                 #  4     0x11  3      OPC=adcq_r64_r64    
  incw %bx                        #  5     0x14  3      OPC=incw_r16        
  retq                            #  6     0x17  1      OPC=retq            
                                                                            
.size target, .-target
