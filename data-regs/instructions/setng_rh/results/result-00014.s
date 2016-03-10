  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  setno %al       #  1     0    3      OPC=setno_r8     
  cbtw            #  2     0x3  2      OPC=cbtw         
  setle %bl       #  3     0x5  3      OPC=setle_r8     
  rolb $0x1, %ah  #  4     0x8  2      OPC=rolb_rh_one  
  xorb %bl, %ah   #  5     0xa  2      OPC=xorb_rh_r8   
  retq            #  6     0xc  1      OPC=retq         
                                                        
.size target, .-target
