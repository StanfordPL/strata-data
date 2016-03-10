  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  callq .clear_cf          #  1     0    5      OPC=callq_label  
  callq .read_cf_into_rbx  #  2     0x5  5      OPC=callq_label  
  setnle %bl               #  3     0xa  3      OPC=setnle_r8    
  adcb %bh, %bl            #  4     0xd  2      OPC=adcb_r8_rh   
  retq                     #  5     0xf  1      OPC=retq         
                                                                 
.size target, .-target
