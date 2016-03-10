  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP   Bytes  Opcode            
.target:           #        0     0      OPC=<label>       
  xorq %rdx, %rdx  #  1     0     3      OPC=xorq_r64_r64  
  setnge %al       #  2     0x3   3      OPC=setnge_r8     
  seto %bl         #  3     0x6   3      OPC=seto_r8       
  sets %dl         #  4     0x9   3      OPC=sets_r8       
  xorw %bx, %ax    #  5     0xc   3      OPC=xorw_r16_r16  
  xaddb %dl, %ah   #  6     0xf   3      OPC=xaddb_rh_r8   
  retq             #  7     0x12  1      OPC=retq          
                                                           
.size target, .-target
