  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP   Bytes  Opcode             
.target:           #        0     0      OPC=<label>        
  xorq %rbx, %rbx  #  1     0     3      OPC=xorq_r64_r64   
  decw %bx         #  2     0x3   3      OPC=decw_r16       
  setp %bl         #  3     0x6   3      OPC=setp_r8        
  setno %al        #  4     0x9   3      OPC=setno_r8       
  cwtd             #  5     0xc   2      OPC=cwtd           
  xchgw %dx, %bx   #  6     0xe   3      OPC=xchgw_r16_r16  
  addb %dh, %ah    #  7     0x11  2      OPC=addb_rh_rh     
  retq             #  8     0x13  1      OPC=retq           
                                                            
.size target, .-target
