  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  callq .read_sf_into_rbx           #  1     0     5      OPC=callq_label    
  callq .move_016_008_bx_r10b_r11b  #  2     0x5   5      OPC=callq_label    
  shlb $0x1, %r10b                  #  3     0xa   3      OPC=shlb_r8_one    
  callq .read_pf_into_rcx           #  4     0xd   5      OPC=callq_label    
  callq .read_of_into_rbx           #  5     0x12  5      OPC=callq_label    
  xaddl %ecx, %ebx                  #  6     0x17  3      OPC=xaddl_r32_r32  
  retq                              #  7     0x1a  1      OPC=retq           
                                                                             
.size target, .-target
