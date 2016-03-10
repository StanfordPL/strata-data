  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode           
.target:                   #        0     0      OPC=<label>      
  callq .read_zf_into_rbx  #  1     0     5      OPC=callq_label  
  callq .read_zf_into_rcx  #  2     0x5   5      OPC=callq_label  
  adcb %bl, %cl            #  3     0xa   2      OPC=adcb_r8_r8   
  callq .read_zf_into_rbx  #  4     0xc   5      OPC=callq_label  
  retq                     #  5     0x11  1      OPC=retq         
                                                                  
.size target, .-target
