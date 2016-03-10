  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movzbl %bh, %ebx  #  1     0    3      OPC=movzbl_r32_rh  
  xorl %ecx, %ecx   #  2     0x3  2      OPC=xorl_r32_r32   
  xchgw %cx, %bx    #  3     0x5  3      OPC=xchgw_r16_r16  
  addb %cl, %ah     #  4     0x8  2      OPC=addb_rh_r8     
  retq              #  5     0xa  1      OPC=retq           
                                                            
.size target, .-target
