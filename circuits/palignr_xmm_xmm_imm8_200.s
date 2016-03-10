  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  xorq %r14, %r14          #  1     0    3      OPC=xorq_r64_r64  
  callq .read_sf_into_rcx  #  2     0x3  5      OPC=callq_label   
  andb %ch, %ch            #  3     0x8  2      OPC=andb_rh_rh    
  movd %ecx, %xmm1         #  4     0xa  4      OPC=movd_xmm_r32  
  retq                     #  5     0xe  1      OPC=retq          
                                                                  
.size target, .-target
