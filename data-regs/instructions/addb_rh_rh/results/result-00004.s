  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  movsbw %bh, %cx          #  1     0     4      OPC=movsbw_r16_rh  
  callq .set_sf            #  2     0x4   5      OPC=callq_label    
  callq .read_sf_into_rbx  #  3     0x9   5      OPC=callq_label    
  xchgw %cx, %bx           #  4     0xe   3      OPC=xchgw_r16_r16  
  addb %bl, %ah            #  5     0x11  2      OPC=addb_rh_r8     
  retq                     #  6     0x13  1      OPC=retq           
                                                                    
.size target, .-target
