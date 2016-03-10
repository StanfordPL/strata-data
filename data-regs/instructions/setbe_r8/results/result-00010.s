  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  setnbe %al               #  1     0    3      OPC=setnbe_r8     
  xorl %ebx, %ebx          #  2     0x3  2      OPC=xorl_r32_r32  
  addb %al, %bh            #  3     0x5  2      OPC=addb_rh_r8    
  callq .read_pf_into_rbx  #  4     0x7  5      OPC=callq_label   
  retq                     #  5     0xc  1      OPC=retq          
                                                                  
.size target, .-target
