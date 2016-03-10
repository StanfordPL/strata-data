  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  callq .set_cf            #  1     0     5      OPC=callq_label   
  callq .read_cf_into_rbx  #  2     0x5   5      OPC=callq_label   
  sall $0x1, %ebx          #  3     0xa   2      OPC=sall_r32_one  
  callq .read_sf_into_rcx  #  4     0xc   5      OPC=callq_label   
  notw %cx                 #  5     0x11  3      OPC=notw_r16      
  xorb %cl, %ah            #  6     0x14  2      OPC=xorb_rh_r8    
  retq                     #  7     0x16  1      OPC=retq          
                                                                   
.size target, .-target
