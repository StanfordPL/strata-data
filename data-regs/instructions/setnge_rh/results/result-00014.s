  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode            
.target:                             #        0     0      OPC=<label>       
  callq .read_of_into_rbx            #  1     0     5      OPC=callq_label   
  callq .move_064_032_rbx_r12d_r13d  #  2     0x5   5      OPC=callq_label   
  callq .read_sf_into_rbx            #  3     0xa   5      OPC=callq_label   
  xorl %r12d, %ebx                   #  4     0xf   3      OPC=xorl_r32_r32  
  setnp %ch                          #  5     0x12  3      OPC=setnp_rh      
  movb %ch, %ah                      #  6     0x15  2      OPC=movb_rh_rh    
  retq                               #  7     0x17  1      OPC=retq          
                                                                             
.size target, .-target
