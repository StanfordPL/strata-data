  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  xorl %ebx, %ebx          #  1     0     2      OPC=xorl_r32_r32   
  callq .read_sf_into_rcx  #  2     0x2   5      OPC=callq_label    
  addb %ch, %ch            #  3     0x7   2      OPC=addb_rh_rh     
  minpd %xmm1, %xmm1       #  4     0x9   4      OPC=minpd_xmm_xmm  
  vmovq %xmm1, %r8         #  5     0xd   5      OPC=vmovq_r64_xmm  
  adcb %r8b, %bl           #  6     0x12  3      OPC=adcb_r8_r8     
  retq                     #  7     0x15  1      OPC=retq           
                                                                    
.size target, .-target
