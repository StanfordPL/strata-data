  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  callq .read_of_into_rbx  #  1     0    5      OPC=callq_label  
  setns %cl                #  2     0x5  3      OPC=setns_r8     
  xorb %cl, %bl            #  3     0x8  2      OPC=xorb_r8_r8   
  callq .read_pf_into_rbx  #  4     0xa  5      OPC=callq_label  
  retq                     #  5     0xf  1      OPC=retq         
                                                                 
.size target, .-target
