  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movb %ah, %al     #  1     0    2      OPC=movb_r8_rh     
  xorl %ecx, %ecx   #  2     0x2  2      OPC=xorl_r32_r32   
  movb %bl, %ch     #  3     0x4  2      OPC=movb_rh_r8     
  movzbq %al, %rbx  #  4     0x6  4      OPC=movzbq_r64_r8  
  xchgw %ax, %cx    #  5     0xa  2      OPC=xchgw_r16_ax   
  retq              #  6     0xc  1      OPC=retq           
                                                            
.size target, .-target
