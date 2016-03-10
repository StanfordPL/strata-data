  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode           
.target:                   #        0     0      OPC=<label>      
  callq .read_of_into_rcx  #  1     0     5      OPC=callq_label  
  callq .clear_cf          #  2     0x5   5      OPC=callq_label  
  callq .read_cf_into_rbx  #  3     0xa   5      OPC=callq_label  
  setns %r10b              #  4     0xf   4      OPC=setns_r8     
  xorb %r10b, %cl          #  5     0x13  3      OPC=xorb_r8_r8   
  xchgb %cl, %bl           #  6     0x16  2      OPC=xchgb_r8_r8  
  retq                     #  7     0x18  1      OPC=retq         
                                                                  
.size target, .-target
