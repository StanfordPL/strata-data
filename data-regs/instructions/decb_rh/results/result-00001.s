  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .set_sf            #  1     0     5      OPC=callq_label    
  callq .read_sf_into_rcx  #  2     0x5   5      OPC=callq_label    
  movzbl %ch, %ebx         #  3     0xa   3      OPC=movzbl_r32_rh  
  decw %bx                 #  4     0xd   3      OPC=decw_r16       
  addb %bl, %ah            #  5     0x10  2      OPC=addb_rh_r8     
  retq                     #  6     0x12  1      OPC=retq           
                                                                    
.size target, .-target
