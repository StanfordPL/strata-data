  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  salq %cl, %rbx           #  1     0    3      OPC=salq_r64_cl  
  callq .read_zf_into_rcx  #  2     0x3  5      OPC=callq_label  
  callq .write_cl_to_zf    #  3     0x8  5      OPC=callq_label  
  retq                     #  4     0xd  1      OPC=retq         
                                                                 
.size target, .-target
