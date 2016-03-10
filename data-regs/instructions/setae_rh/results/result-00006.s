  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .read_cf_into_rbx  #  1     0    5      OPC=callq_label   
  adcb %bh, %bl            #  2     0x5  2      OPC=adcb_r8_rh    
  setng %bl                #  3     0x7  3      OPC=setng_r8      
  movl %ebx, %eax          #  4     0xa  2      OPC=movl_r32_r32  
  adcb %bl, %ah            #  5     0xc  2      OPC=adcb_rh_r8    
  cwtl                     #  6     0xe  1      OPC=cwtl          
  retq                     #  7     0xf  1      OPC=retq          
                                                                  
.size target, .-target
