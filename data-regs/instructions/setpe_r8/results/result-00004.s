  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  callq .read_pf_into_rcx  #  1     0     5      OPC=callq_label   
  shlb $0x1, %ch           #  2     0x5   2      OPC=shlb_rh_one   
  callq .read_sf_into_rbx  #  3     0x7   5      OPC=callq_label   
  setnle %bh               #  4     0xc   3      OPC=setnle_rh     
  sets %ch                 #  5     0xf   3      OPC=sets_rh       
  xorl %ecx, %ebx          #  6     0x12  2      OPC=xorl_r32_r32  
  retq                     #  7     0x14  1      OPC=retq          
                                                                   
.size target, .-target
