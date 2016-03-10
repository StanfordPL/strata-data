  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  xorb %al, %al      #  1     0    2      OPC=xorb_r8_r8      
  cwtl               #  2     0x2  1      OPC=cwtl            
  addb %al, %bh      #  3     0x3  2      OPC=addb_rh_r8      
  xchgw %ax, %ax     #  4     0x5  2      OPC=xchgw_r16_ax    
  cmovsl %eax, %eax  #  5     0x7  3      OPC=cmovsl_r32_r32  
  sbbb %bh, %ah      #  6     0xa  2      OPC=sbbb_rh_rh      
  retq               #  7     0xc  1      OPC=retq            
                                                              
.size target, .-target
