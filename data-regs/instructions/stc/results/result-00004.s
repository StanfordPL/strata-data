  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  xorl %eax, %eax          #  1     0    2      OPC=xorl_r32_r32  
  callq .read_sf_into_rcx  #  2     0x2  5      OPC=callq_label   
  notw %cx                 #  3     0x7  3      OPC=notw_r16      
  shlb $0x1, %ch           #  4     0xa  2      OPC=shlb_rh_one   
  retq                     #  5     0xc  1      OPC=retq          
                                                                  
.size target, .-target
