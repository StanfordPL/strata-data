  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode           
.target:                   #        0     0      OPC=<label>      
  callq .read_pf_into_rbx  #  1     0     5      OPC=callq_label  
  callq .set_cf            #  2     0x5   5      OPC=callq_label  
  incb %bl                 #  3     0xa   2      OPC=incb_r8      
  callq .read_cf_into_rcx  #  4     0xc   5      OPC=callq_label  
  sarq %cl, %rbx           #  5     0x11  3      OPC=sarq_r64_cl  
  setc %ah                 #  6     0x14  3      OPC=setc_rh      
  retq                     #  7     0x17  1      OPC=retq         
                                                                  
.size target, .-target
