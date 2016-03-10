  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  xorl %ebx, %ebx   #  1     0    2      OPC=xorl_r32_r32   
  rorb $0x1, %bh    #  2     0x2  2      OPC=rorb_rh_one    
  movd %xmm1, %ecx  #  3     0x4  4      OPC=movd_r32_xmm   
  adcb %ch, %bl     #  4     0x8  2      OPC=adcb_r8_rh     
  decb %bh          #  5     0xa  2      OPC=decb_rh        
  xchgw %bx, %cx    #  6     0xc  3      OPC=xchgw_r16_r16  
  retq              #  7     0xf  1      OPC=retq           
                                                            
.size target, .-target
