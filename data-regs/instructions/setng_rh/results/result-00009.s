  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  setle %ah                #  1     0     3      OPC=setle_rh      
  callq .clear_cf          #  2     0x3   5      OPC=callq_label   
  setae %al                #  3     0x8   3      OPC=setae_r8      
  callq .read_zf_into_rcx  #  4     0xb   5      OPC=callq_label   
  addw %cx, %ax            #  5     0x10  3      OPC=addw_r16_r16  
  retq                     #  6     0x13  1      OPC=retq          
                                                                   
.size target, .-target
