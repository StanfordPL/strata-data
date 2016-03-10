  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  callq .read_zf_into_rcx  #  1     0     5      OPC=callq_label   
  xorw %ax, %ax            #  2     0x5   3      OPC=xorw_r16_r16  
  callq .write_cl_to_pf    #  3     0x8   5      OPC=callq_label   
  rolb $0x1, %al           #  4     0xd   2      OPC=rolb_r8_one   
  setnp %ah                #  5     0xf   3      OPC=setnp_rh      
  xorw %cx, %ax            #  6     0x12  3      OPC=xorw_r16_r16  
  retq                     #  7     0x15  1      OPC=retq          
                                                                   
.size target, .-target
