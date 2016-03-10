  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  movzbl %ah, %edx         #  1     0     3      OPC=movzbl_r32_rh  
  xorl %eax, %eax          #  2     0x3   2      OPC=xorl_r32_r32   
  callq .read_sf_into_rbx  #  3     0x5   5      OPC=callq_label    
  decw %bx                 #  4     0xa   3      OPC=decw_r16       
  addb %dl, %bh            #  5     0xd   2      OPC=addb_rh_r8     
  xchgl %ebx, %eax         #  6     0xf   1      OPC=xchgl_eax_r32  
  retq                     #  7     0x10  1      OPC=retq           
                                                                    
.size target, .-target
