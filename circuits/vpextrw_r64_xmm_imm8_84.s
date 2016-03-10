  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vsubsd %xmm1, %xmm1, %xmm2        #  1     0     4      OPC=vsubsd_xmm_xmm_xmm       
  movq %xmm1, %rcx                  #  2     0x4   5      OPC=movq_r64_xmm             
  andb %cl, %ch                     #  3     0x9   2      OPC=andb_rh_r8               
  vfmadd231ss %xmm2, %xmm1, %xmm1   #  4     0xb   5      OPC=vfmadd231ss_xmm_xmm_xmm  
  callq .read_cf_into_rbx           #  5     0x10  5      OPC=callq_label              
  callq .move_128_064_xmm1_r12_r13  #  6     0x15  5      OPC=callq_label              
  xaddw %bx, %r13w                  #  7     0x1a  5      OPC=xaddw_r16_r16            
  retq                              #  8     0x1f  1      OPC=retq                     
                                                                                       
.size target, .-target
