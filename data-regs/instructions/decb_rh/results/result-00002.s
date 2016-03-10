  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP  Bytes  Opcode             
.target:                   #        0    0      OPC=<label>        
  movb %ah, %dh            #  1     0    2      OPC=movb_rh_rh     
  xorl %eax, %eax          #  2     0x2  2      OPC=xorl_r32_r32   
  callq .read_sf_into_rbx  #  3     0x4  5      OPC=callq_label    
  decw %bx                 #  4     0x9  3      OPC=decw_r16       
  addb %dh, %bh            #  5     0xc  2      OPC=addb_rh_rh     
  xchgl %ebx, %eax         #  6     0xe  1      OPC=xchgl_eax_r32  
  retq                     #  7     0xf  1      OPC=retq           
                                                                   
.size target, .-target
