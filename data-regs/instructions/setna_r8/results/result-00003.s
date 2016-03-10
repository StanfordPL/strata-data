  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  callq .read_zf_into_rcx  #  1     0     5      OPC=callq_label   
  adcb %cl, %ch            #  2     0x5   2      OPC=adcb_rh_r8    
  callq .read_zf_into_rbx  #  3     0x7   5      OPC=callq_label   
  salq $0x1, %rbx          #  4     0xc   3      OPC=salq_r64_one  
  callq .read_zf_into_rbx  #  5     0xf   5      OPC=callq_label   
  retq                     #  6     0x14  1      OPC=retq          
                                                                   
.size target, .-target
