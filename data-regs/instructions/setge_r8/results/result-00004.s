  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  stc                      #  1     0    1      OPC=stc          
  callq .read_cf_into_rbx  #  2     0x1  5      OPC=callq_label  
  setnge %bh               #  3     0x6  3      OPC=setnge_rh    
  xorb %bh, %bl            #  4     0x9  2      OPC=xorb_r8_rh   
  retq                     #  5     0xb  1      OPC=retq         
                                                                 
.size target, .-target
