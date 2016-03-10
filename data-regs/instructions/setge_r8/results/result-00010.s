  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .read_sf_into_rcx  #  1     0     5      OPC=callq_label    
  callq .read_of_into_rbx  #  2     0x5   5      OPC=callq_label    
  movsbl %cl, %eax         #  3     0xa   3      OPC=movsbl_r32_r8  
  xorb %bl, %al            #  4     0xd   2      OPC=xorb_r8_r8     
  callq .read_zf_into_rcx  #  5     0xf   5      OPC=callq_label    
  movl %ecx, %ebx          #  6     0x14  2      OPC=movl_r32_r32   
  retq                     #  7     0x16  1      OPC=retq           
                                                                    
.size target, .-target
