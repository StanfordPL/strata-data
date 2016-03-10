  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbl %ah, %eax  #  1     0    3      OPC=movsbl_r32_rh  
  cltq              #  2     0x3  2      OPC=cltq           
  sarq $0x1, %rax   #  3     0x5  3      OPC=sarq_r64_one   
  xchgb %al, %ah    #  4     0x8  2      OPC=xchgb_rh_r8    
  retq              #  5     0xa  1      OPC=retq           
                                                            
.size target, .-target
