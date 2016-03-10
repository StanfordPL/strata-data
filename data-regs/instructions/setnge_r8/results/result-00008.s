  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  sets %ch                 #  1     0    3      OPC=sets_rh      
  callq .read_of_into_rbx  #  2     0x3  5      OPC=callq_label  
  xorb %ch, %bl            #  3     0x8  2      OPC=xorb_r8_rh   
  retq                     #  4     0xa  1      OPC=retq         
                                                                 
.size target, .-target
