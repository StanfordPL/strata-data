  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode           
.target:                   #        0     0      OPC=<label>      
  callq .read_pf_into_rcx  #  1     0     5      OPC=callq_label  
  incw %cx                 #  2     0x5   3      OPC=incw_r16     
  callq .write_cl_to_pf    #  3     0x8   5      OPC=callq_label  
  callq .read_pf_into_rbx  #  4     0xd   5      OPC=callq_label  
  retq                     #  5     0x12  1      OPC=retq         
                                                                  
.size target, .-target
